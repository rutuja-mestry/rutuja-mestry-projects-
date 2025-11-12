package p1;

public class LoanAccount extends Account {
    double loanAmount;
    double interestRate = 8.5; 

    public LoanAccount(int accNo, String holderName, double balance, String iFCCODE,
            String address, double la) {
        super(accNo, holderName, balance, iFCCODE, address);
        this.loanAmount = la;
        this.balance = -loanAmount; 
    }

    @Override
    public void withdraw(double amount) {
        System.out.println("Withdrawal not allowed from Loan Account.");
    }
    

    
    public void repayLoan(double amount) {
        if (amount <= 0) {
            System.out.println("Invalid repayment amount.");
            return;
        }
        loanAmount -= amount;
        balance += amount; // Reduces the negative balance

        if (loanAmount <= 0) {
            loanAmount = 0;
            balance = 0;
            System.out.println("🎉 Loan fully repaid! No remaining dues.");
        } else {
            System.out.println("Loan repayment of " + amount + " done. Remaining Loan: " + loanAmount);
        }
    }

    
    public void calculateLoanInterest() {
        if (loanAmount > 0) {
            double interest = (loanAmount * interestRate) / 100;
            loanAmount += interest;
            balance -= interest; 
            System.out.println("Interest of " + interest + " added. Total loan due: " + loanAmount);
        } else {
            System.out.println("No interest applicable. Loan fully repaid.");
        }
    }

    @Override
    public String toString() {
        return "LoanAccount [accNo=" + accNo + ", holderName=" + holderName 
        	     + ", balance=" + balance + ", Loan Amount=" + loanAmount 
                 + ", IFSC Code= " + IFCCODE + ", Address= " + Address + "]";
     }
 }


