package p2;
import p1.*;
import java.util.ArrayList;
import java.util.Scanner;

public class BankTest {
    public static void main(String[] args) {
    	
        ArrayList<Account> a1 = new ArrayList<Account>();
        ArrayList<Transaction> tList = new ArrayList<Transaction>();
        
        a1.add(new SavingAccount(101, "Reavti", 20000, "Revati7821", "Pune",0.5));
        a1.add(new SavingAccount(102, "Prajkta", 25000, "Prajkta321", "Pune",0.5));
        a1.add(new SavingAccount(103, "Srushti", 30000, "Srushti2005", "Pune",0.5));
        a1.add(new SavingAccount(104, "Sakshi", 28000, "Sakshi098", "Pune",0.5));
        
        a1.add(new SalaryAccount(201, "Radhika", 60000, "Radhika123", "Pune"));
        a1.add(new SalaryAccount(202, "Ruchika", 65000, "Ruchika456", "Pune"));
        a1.add(new SalaryAccount(203, "Payal", 70000, "Payal789", "Pune"));
        a1.add(new SalaryAccount(204, "Piyush", 75000, "Piyush000", "Pune"));
        
        
        a1.add(new CurrentAccount(301, "Pratik", 60000, "Pratik1823", "Pune", 3000));
        a1.add(new CurrentAccount(302, "Rahul", 12000, "Rahul270", "Pune", 2000));
        a1.add(new CurrentAccount(303, "Mandar", 30000, "Mandar2109", "Pune", 1000));
        a1.add(new CurrentAccount(304, "Omkar", 60000, "Omkar45", "Pune", 3000));
        
        
        a1.add(new LoanAccount(401, "Maithili", 30000, "Maithili05", "Pune", 600000));
        a1.add(new LoanAccount(402, "Supriya", 20000, "Supriya2214", "Pune", 500000));
        a1.add(new LoanAccount(403, "Priyanka", 15000, "Priyanka18", "Pune", 300000));
        a1.add(new LoanAccount(404, "Pallavi", 30000, "Pallavi360", "Pune", 400000));
        
        
        Scanner sc = new Scanner(System.in);
        int choice;

        do {
            System.out.println("\n===== BANK MANAGEMENT SYSTEM =====");
            System.out.println("1. Create Account");
            System.out.println("2. Deposit Amount");
            System.out.println("3. Withdraw Amount");
            System.out.println("4. Check Balance");
            System.out.println("5. View Account Details");
            System.out.println("6. Calculate Interest (Savings Only)");
            System.out.println("7. Reactivate Salary Account");
            System.out.println("9. Repay Loan (Loan Account)");
            System.out.println("10. Calculate Loan Interest");
            System.out.println("11. View All Transactions");
            System.out.println("12. Exit");
            System.out.print("Enter your choice: ");
            choice = sc.nextInt();

            switch (choice) {  
                case 1:
                    System.out.println("\n--- Create Account ---");
                    System.out.println("1. Savings Account");
                    System.out.println("2. Salary Account");
                    System.out.println("3. Loan Account");
                    System.out.println("4. Current Account");
                    System.out.print("Select Account Type: ");
                    int type = sc.nextInt();

                    System.out.println("Enter Account Number: ");
                    int accno = sc.nextInt();
                    System.out.println("Enter Account Holder Name: ");
                    sc.nextLine();
                    String hname = sc.nextLine();
                    System.out.println("Enter Initial Balance: ");
                    double bal = sc.nextDouble();
                    System.out.println("Enter IFSC Code: ");
                    String ifsc = sc.next();
                    System.out.println("Enter Address: ");
                    String add = sc.next();

                    if (type == 1) {
                        System.out.println("Enter Interest Rate: ");
                        double ir = sc.nextDouble();
                        a1.add(new SavingAccount(accno, hname, bal,  ifsc, add, ir));
                    } else if (type == 2) {
                        a1.add(new SalaryAccount(accno, hname, bal, ifsc, add));
                    } else if (type == 3) {
                        System.out.println("Enter Loan Amount: ");
                        double la = sc.nextDouble();
                        a1.add(new LoanAccount(accno, hname, bal,  ifsc, add, la));
                    } else if (type == 4) {
                        System.out.println("Enter Overdraft Limit: ");
                        double ol = sc.nextDouble();
                        a1.add(new CurrentAccount(accno, hname, bal,  ifsc, add, ol));
                    } else {
                        System.out.println("Invalid Account Type.");
                    }
                    System.out.println("Account Created Successfully!");
                    break;

                case 2:
                    System.out.print("Enter Account Number: ");
                    int accNo = sc.nextInt();
                    Account acc = findAccount(a1, accNo);
                    if (acc != null) {
                        System.out.print("Enter Deposit Amount: ");
                        double dep = sc.nextDouble();
                        acc.deposit(dep);
                        tList.add(new Transaction(acc.getAccNo(), "Deposit", dep));
                    } else {
                        System.out.println("Account not found.");
                    }
                    break;

                case 3:
                    System.out.print("Enter Account Number: ");
                    accNo = sc.nextInt();
                    acc = findAccount(a1, accNo);
                    if (acc != null) {
                        System.out.print("Enter Withdraw Amount: ");
                        double wd = sc.nextDouble();
                        acc.withdraw(wd);
                        tList.add(new Transaction(acc.getAccNo(), "Withdraw", wd));
                    } else {
                        System.out.println("Account not found.");
                    }
                    break;

                case 4:
                    System.out.print("Enter Account Number: ");
                    accNo = sc.nextInt();
                    acc = findAccount(a1, accNo);
                    if (acc != null) {
                        System.out.println("Current Balance: " + acc.getBalance());
                    } else {
                        System.out.println("Account not found.");
                    }
                    break;

                case 5:
                    System.out.print("Enter Account Number: ");
                    accNo = sc.nextInt();
                    acc = findAccount(a1, accNo);
                    if (acc != null) {
                        System.out.println(acc);
                    } else {
                        System.out.println("Account not found.");
                    }
                    break;

                case 6:
                    System.out.print("Enter Account Number: ");
                    accNo = sc.nextInt();
                    acc = findAccount(a1, accNo);
                    if (acc instanceof SavingAccount) {
                        ((SavingAccount) acc).addInterest();
                    } else {
                        System.out.println("Interest applicable only for Saving Accounts.");
                    }
                    break;
                case 7:
                    System.out.print("Enter Salary Account Number: ");
                    accNo = sc.nextInt();
                    acc = findAccount(a1, accNo);
                    if (acc instanceof SalaryAccount) {
                        ((SalaryAccount) acc).reactivateAccount();
                    } else {
                        System.out.println("Account not found or not a Salary Account.");
                    }
                    break;

                case 8:
                    System.out.println("Exiting... Thank you for banking with us!");
                    break;
                
                case 9:
                    System.out.print("Enter Loan Account Number: ");
                    accNo = sc.nextInt();
                    acc = findAccount(a1, accNo);
                    if (acc instanceof LoanAccount) {
                        System.out.print("Enter Repayment Amount: ");
                        double repay = sc.nextDouble();
                        ((LoanAccount) acc).repayLoan(repay);
                        tList.add(new Transaction(acc.getAccNo(), "Repay Loan", repay));

                    } else {
                        System.out.println("Account not found or not a Loan Account.");
                    }
                    break;

                case 10:
                    System.out.print("Enter Loan Account Number: ");
                    accNo = sc.nextInt();
                    acc = findAccount(a1, accNo);
                    if (acc instanceof LoanAccount) {
                        ((LoanAccount) acc).calculateLoanInterest();
                    } else {
                        System.out.println("Account not found or not a Loan Account.");
                    }
                    break;
                case 11:
                    System.out.println("\n--- Transaction History ---");
                    if (tList.isEmpty()) {
                        System.out.println("No transactions found.");
                    } else {
                        for (Transaction t : tList) {
                            System.out.println(t);
                        }
                    }
                    break;


                default:
                    System.out.println("Invalid Choice. Try again!");
            }
        } while (choice != 11);

        sc.close();
    }

    static Account findAccount(ArrayList<Account> list, int accNo) {
        for (Account a : list) {
            if (a.getAccNo() == accNo)
                return a;
        }
        return null;
    }
}