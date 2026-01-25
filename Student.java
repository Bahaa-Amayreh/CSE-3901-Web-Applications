import java.util.Arrays;
class Student {
    public static void main(String[] args) {
        String fname = "Alex"; 
        String lname = new String("David");
        int age = 20;
        int[] marks = {96, 92, 88};
        int[]aliace= marks;

        System.out.println("fname == \"Alex\": " + (fname == "Alex"));      
        // true --> same pooled string object
        System.out.println("lname == \"David\": " + (lname == "David"));      
        // false --> different memory locations
        System.out.println("fname.equals(\"Alex\"): " + fname.equals("Alex")); 
        // true --> same content
        System.out.println("lname.equals(\"David\"): " + lname.equals("David")); 
        // true --> same content
        System.out.println("age == 20: " + (age == 20));            
        // true (primitive)
        System.out.println("marks == new int[]{96,92,88}: " + (marks == new int[]{96,92,88}));  
        // false --> different objects
        System.out.println("Arrays.equals(marks, new int[]{96,92,88}): " + Arrays.equals(marks, new int[]{96,92,88}));
        // true --> same array content
        System.out.println("marks.equals(new int[]{96,92,88}): " + marks.equals(new int[]{96,92,88}));
        // false --> only checks if both arrays are the same object, not if they contain the same numbers
        System.out.println("marks.equals(aliace): " + marks.equals(aliace));
        // true --> same object location!
    }
}
