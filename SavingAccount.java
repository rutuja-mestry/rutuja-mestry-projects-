package p1;

public class SavingAccount extends Account {
    double interestRate;

    public SavingAccount(int accNo, String holderName, double balance, String iFCCODE,
            String address, double ir) {
        super(accNo, holderName, balance, iFCCODE, address);
        this.interestRate = ir;
    }

    public double getInterestRate() {
        return interestRate;
    }

    public void setInterestRate(double interestRate) {
        this.interestRate = interestRate;
    }

    @Override
    public void withdraw(double amount) {
        if (balance - amount >= 1000) {
            balance -= amount;
            System.out.println(amount + " withdrawn. New Balance: " + balance);
        } else {
            System.out.println("Insufficient balance. Minimum 1000 required.");
        }
    }

    public void addInterest() {
        double interest = balance * interestRate / 100;
        balance += interest;
        System.out.println("Interest added: " + interest + ". New Balance: " + balance);
    }

    @Override
    public String toString() {
        return "SavingAccount [interestRate=" + interestRate + ", accNo=" + accNo + ", holderName=" + holderName
                + ", balance=" + balance + "]";
    }
}

