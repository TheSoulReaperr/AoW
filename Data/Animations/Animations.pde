import java.awt.Graphics;
import java.awt.Graphics2D;
import java.util.Map;
import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;
import javax.imageio.stream.ImageInputStream;
import javax.imageio.ImageReader;
import javax.imageio.metadata.IIOMetadata;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.NamedNodeMap;
import java.awt.Image;
import java.awt.geom.AffineTransform;
import java.awt.image.AffineTransformOp;

int dir = 1;
String gifname = "militiaDR";
String newname = "miDR";

void setup() {
  size(200,200);
  try {
    String[] imageatt = new String[]{
            "imageLeftPosition",
            "imageTopPosition",
            "imageWidth",
            "imageHeight"
    };    

    ImageReader reader = (ImageReader)ImageIO.getImageReadersByFormatName("gif").next();
    ImageInputStream ciis = ImageIO.createImageInputStream(new File(sketchPath("Attack/"+gifname+".gif")));
    reader.setInput(ciis, false);
   
   
    int noi = reader.getNumImages(true);
    BufferedImage master = null;

    for (int i = 0; i < noi; i++) { 
        BufferedImage image = reader.read(i);
        IIOMetadata metadata = reader.getImageMetadata(i);

        Node tree = metadata.getAsTree("javax_imageio_gif_image_1.0");
        NodeList children = tree.getChildNodes();

        for (int j = 0; j < children.getLength(); j++) {
            Node nodeItem = children.item(j);

            if(nodeItem.getNodeName().equals("ImageDescriptor")){
                Map<String, Integer> imageAttr = new HashMap<String, Integer>();

                for (int k = 0; k < imageatt.length; k++) {
                    NamedNodeMap attr = nodeItem.getAttributes();
                    Node attnode = attr.getNamedItem(imageatt[k]);
                    imageAttr.put(imageatt[k], Integer.valueOf(attnode.getNodeValue()));
                }
                if(i==0){
                  master = new BufferedImage(imageAttr.get("imageWidth"), imageAttr.get("imageHeight"), BufferedImage.TYPE_INT_ARGB);
                }
                master = new BufferedImage(imageAttr.get("imageWidth"), imageAttr.get("imageHeight"), BufferedImage.TYPE_INT_ARGB);
                master.getGraphics().drawImage(image, imageAttr.get("imageLeftPosition"), imageAttr.get("imageTopPosition"), null);
                if(dir ==1)
                master = flip(master);
                ImageIO.write(master, "GIF", new File(sketchPath( newname+""+(i+1) + ".gif")));
            }
        }
        
    }
  } catch (IOException e) {
    e.printStackTrace();
  }
}

BufferedImage flip(BufferedImage image){
  BufferedImage simg = image;
  BufferedImage mimg = new BufferedImage(image.getWidth(), image.getHeight(), BufferedImage.TYPE_INT_ARGB);
  for(int y = 0; y < image.getHeight(); y++){
    for(int lx = 0, rx = image.getWidth()-1; lx < image.getWidth(); lx++, rx--){
      color p = simg.getRGB(lx, y);
      mimg.setRGB(rx, y, p);
    }
  }
  return mimg;
}
