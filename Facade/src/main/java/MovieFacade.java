public class MovieFacade {
    private DVDPlayer dvdPlayer;
    private LightSystem lightSystem;
    private Screen screen;
    private SoundSystem soundSystem;
    private Projector projector;
    public MovieFacade(DVDPlayer dvdPlayer,LightSystem lightSystem,Projector projector,Screen screen,SoundSystem soundSystem){
        this.dvdPlayer=dvdPlayer;
        this.lightSystem=lightSystem;
        this.projector=projector;
        this.screen=screen;
        this.soundSystem=soundSystem;
    }
    public void playMovie(){
        System.out.println("Movie is playing");
        System.out.println(dvdPlayer.turnOnDVDPlayer());
        System.out.println(lightSystem.turnOnLightSystem());
        System.out.println(screen.turnOnScreen());
        System.out.println(soundSystem.turnOnSoundSystem());
        System.out.println(projector.turnOnProjector());
    }
    public void turnOffMovie(){
        System.out.println("Movie is turned off");
        System.out.println(dvdPlayer.turnOffDVDPlayer());
        System.out.println(lightSystem.turnOffLightSystem());
        System.out.println(screen.turnOffScreen());
        System.out.println(soundSystem.turnOffSoundSystem());
        System.out.println(projector.turnOffProjector());
    }
}
