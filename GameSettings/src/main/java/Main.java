public class Main {
    public static void main(String []args){
        GameSettings gs1 = GameSettings.getInstance(5,"Easy");
        GameSettings gs2 = GameSettings.getInstance(10,"Hard");
        gs1.printGameSettings();
        gs2.printGameSettings();
        System.out.println(gs1 == gs2);
    }
}
