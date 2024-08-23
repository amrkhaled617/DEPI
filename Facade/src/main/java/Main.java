public class Main {
    public static void main(String []args){
        DVDPlayer dvdPlayer = new DVDPlayer();
        LightSystem lightSystem = new LightSystem();
        Projector projector = new Projector();
        Screen screen = new Screen();
        SoundSystem soundSystem = new SoundSystem();

        MovieFacade movieFacade = new MovieFacade(dvdPlayer,lightSystem,projector,screen,soundSystem);
        movieFacade.playMovie();
//        movieFacade.turnOffMovie();
    }
}
