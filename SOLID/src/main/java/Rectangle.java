public class Rectangle {
    private int width;
    private int height;

    public void setWidth(int width) {
        this.width = width;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public int getArea(){
        return width * height;
    }
    public class Square extends Rectangle{
        @Override
        public void setWidth(int width){
            super.setWidth(width);
            super.setHeight(width);
        }
        public void setHeight(int height){
            super.setWidth(height);
            super.setHeight(height);
        }
    }
}
