public class GameSettings {
    private static volatile GameSettings instance;
    private int sound;
    private String difficulty;
    private GameSettings(int sound,String difficulty){
        this.sound=sound;
        this.difficulty=difficulty;
    }
    public static GameSettings getInstance(int sound , String difficulty){
        GameSettings result = instance;
        if(result == null){
            synchronized (GameSettings.class){
                result = instance;
                if (result==null){
                    instance = result = new GameSettings(sound,difficulty);
                }
            }
        }
        return result;
    }
    public void printGameSettings(){
        System.out.println("Sound :" + sound);
        System.out.println("Difficulty :"+ difficulty);
    }

    public int getSound() {
        return sound;
    }

    public void setSound(int sound) {
        this.sound = sound;
    }

    public String getDifficulty() {
        return difficulty;
    }

    public void setDifficulty(String difficulty) {
        this.difficulty = difficulty;
    }
}

