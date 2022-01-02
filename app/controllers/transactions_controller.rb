class TransactionsController < ApplicationController
  before_action :set_transaction, only: %i[ show edit update destroy ]
  before_action :require_user_logged_in!
  before_action :get_user
  before_action :get_account

  # GET /transactions or /transactions.json
  def index
    #@transactions = Transaction.all
    @transactions = @account.transactions
  end

  # GET /transactions/1 or /transactions/1.json
  def show
  end

  # GET /transactions/new
  def new
    #@transaction = Transaction.new
    @transaction = @account.transactions.build
  end

  # GET /transactions/1/edit
  def edit
  end

  # POST /transactions or /transactions.json
  def create
    #@transaction = Transaction.new(transaction_params)
    @transaction = @account.transactions.build(transaction_params)

    respond_to do |format|
      if @transaction.save
        format.html { redirect_to user_account_transactions_path(@user, @account), notice: "Transaction was Successfully Created." }
        format.json { render :show, status: :created, location: @transaction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transactions/1 or /transactions/1.json
  def update
    respond_to do |format|
      if @transaction.update(transaction_params)
        format.html { redirect_to user_account_transaction_path(@user, @account), notice: "Transaction was Successfully Updated." }
        format.json { render :show, status: :ok, location: @transaction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transactions/1 or /transactions/1.json
  def destroy
    @transaction.destroy

    respond_to do |format|
      format.html { redirect_to user_account_transactions_path(@user, @account), notice: "Transaction was Successfully Destroyed." }
      format.json { head :no_content }
    end
  end

  private

    def get_user
      @user = user.find(params[:id])
    end

    def get_account
      @account = account.find(params[:account_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_transaction
      @transaction = @account.Transaction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transaction_params
      params.require(:transaction).permit(:TransactionAccount, :TransactionType, :TransactionAmount, :TransactionDate)
    end
end
