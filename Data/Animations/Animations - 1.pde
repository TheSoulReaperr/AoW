import java.io.File;
int Frames = 9;
String Name = "swAR";

void setup() {
  for (int i=0; i<Frames; i++) {
    if (i > 9) {
      File file = new File(sketchPath("Attack/frame_"+i+"_delay-0.1s.gif"));
      file.renameTo(new File(sketchPath(Name+(i+1)+".gif")));
    } else {
      File file = new File(sketchPath("Attack/frame_0"+i+"_delay-0.1s.gif"));
      file.renameTo(new File(sketchPath(Name+(i+1)+".gif")));
    }
  }
}
