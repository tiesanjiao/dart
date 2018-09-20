import java.awt.Point;

/**
 * Created by zhaoyangyang on 2018/9/18.
 */

public class Rectangle {
    public int width = 0;
    public int height = 0;
    public Point origin;

    // four constructors
    public Rectangle() {
        origin = new Point(0, 0);
    }

    public Rectangle(Point p) {
        origin = p;
    }

    public Rectangle(int w, int h) {
        origin = new Point(0, 0);
        width = w;
        height = h;
    }

    public Rectangle(Point p, int w, int h) {
        origin = p;
        width = w;
        height = h;
    }

    // a method for moving the rectangle
    public void move(int x, int y) {
        origin.x = x;
        origin.y = y;
    }

    // a method for computing the area of the rectangle
    public int getArea() {
        return width * height;
    }

    /**
     * java 里面可选参数概念
     *
     * @param a
     * @param args
     */
    public void getTest(int a, String... args) {
        if (args.length != 0) {
            int size = args.length;
            for (int i = 0; i < size; i++) {
                System.out.println(args[i]);
            }

        }
    }

}
