package p1;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

public class SalaryAccount extends Account {

    private LocalDate lastTransactionDate;
    private boolean isFrozen;

    public SalaryAccount(int accNo, String holderName, double balance, String iFCCODE,
            String address) {
        super(accNo, holderName, balance, iFCCODE, address);
        this.lastTransactionDate = LocalDate.now();
        this.isFrozen = false;
    }

    @Override
    public void withdraw(double amount) {
        checkAccountStatus(); 
        if (isFrozen) {
            System.out.println("Account is frozen due to inactivity. Cannot withdraw until reactivated.");
            return;
        }

        if (balance >= amount) {
            balance -= amount;
            lastTransactionDate = LocalDate.now(); 
            System.out.println(amount + " withdrawn. New Balance: " + balance);
        } else {
            System.out.println("Insufficient balance in Salary Account.");
        }
    }

    @Override
    public void deposit(double amount) {
        checkAccountStatus(); 
        if (isFrozen) {
            System.out.println("Account is frozen due to inactivity. Cannot deposit until reactivated.");
            return;
        }

        balance += amount;
        lastTransactionDate = LocalDate.now(); 
        System.out.println(amount + " deposited. New Balance: " + balance);
    }

 
    private void checkAccountStatus() {
        long month = ChronoUnit.MONTHS.between(lastTransactionDate, LocalDate.now());
        if (month >= 2 && !isFrozen) {
            isFrozen = true;
            System.out.println(" Account frozen due to inactivity for " + month + " months.");
            System.out.println("Notification sent to account holder: " + holderName);
        }
    }

    public void reactivateAccount() {
        if (isFrozen) {
            isFrozen = false;
            lastTransactionDate = LocalDate.now();
            System.out.println("Account reactivated successfully for " + holderName);
        } else {
            System.out.println("Account is already active.");
        }
    }

    @Override
    public String toString() {
        return "SalaryAccount [accNo=" + accNo + ", holderName=" + holderName + ", balance=" + balance
                + ", IFSC Code= " + IFCCODE + ", Address = " + Address
                + ", Frozen=" + isFrozen + ", Last Transaction=" + lastTransactionDate + "]";
    }
}

