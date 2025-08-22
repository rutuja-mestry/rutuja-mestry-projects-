import java.util.*;

class Student {
    int id;
    String name;
    boolean isPresent;

    Student(int id, String name) {
        this.id = id;
        this.name = name;
        this.isPresent = false; // default absent
    }
}

public class AttendanceSystem {
    static Scanner sc = new Scanner(System.in);
    static ArrayList<Student> students = new ArrayList<>();

    public static void main(String[] args) {
        int choice;
        do {
            System.out.println("\n===== Attendance Management System =====");
            System.out.println("1. Add Student");
            System.out.println("2. Mark Attendance");
            System.out.println("3. View Attendance");
            System.out.println("4. Exit");
            System.out.print("Enter your choice: ");
            choice = sc.nextInt();

            switch (choice) {
                case 1:
                    addStudent();
                    break;
                case 2:
                    markAttendance();
                    break;
                case 3:
                    viewAttendance();
                    break;
                case 4:
                    System.out.println("Exiting... Goodbye!");
                    break;
                default:
                    System.out.println("Invalid choice. Try again.");
            }
        } while (choice != 4);
    }

    static void addStudent() {
        System.out.print("Enter Student ID: ");
        int id = sc.nextInt();
        sc.nextLine(); // consume newline
        System.out.print("Enter Student Name: ");
        String name = sc.nextLine();

        students.add(new Student(id, name));
        System.out.println("Student added successfully!");
    }

    static void markAttendance() {
        if (students.isEmpty()) {
            System.out.println("No students found. Please add students first.");
            return;
        }

        for (Student s : students) {
            System.out.print("Is " + s.name + " present? (y/n): ");
            char ch = sc.next().charAt(0);
            s.isPresent = (ch == 'y' || ch == 'Y');
        }
        System.out.println("Attendance marked successfully!");
    }

    static void viewAttendance() {
        if (students.isEmpty()) {
            System.out.println("No students to display.");
            return;
        }

        System.out.println("\n--- Attendance Record ---");
        System.out.printf("%-5s %-15s %-10s\n", "ID", "Name", "Status");
        for (Student s : students) {
            String status = s.isPresent ? "Present" : "Absent";
            System.out.printf("%-5d %-15s %-10s\n", s.id, s.name, status);
        }
    }
}
