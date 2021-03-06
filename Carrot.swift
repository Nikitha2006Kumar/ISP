import Scenes
import Igis

  /*
     This class is responsible for rendering the background.
   */


class Carrot: RenderableEntity {

      init() {
          // Using a meaningful name can be helpful for debugging
          super.init(name:"Carrot")
      }


      func RenderTriangle(canvas:Canvas, x:Int, y:Int, color: Color.Name)
      {
          let lineWidth = LineWidth(width:2)
          canvas.render(lineWidth)

          let orange = StrokeStyle(color:Color(.black))
          canvas.render(orange)

          let fillStyle = FillStyle(color:Color(color))
          canvas.render(fillStyle)
          
          let x1 = x/2 + x
          let x2 = x1 - x/5
          let y1 = y/3 + y + y/3
          let lines = Path(fillMode:.fillAndStroke)
          lines.moveTo(Point(x:x, y:y))
          lines.lineTo(Point(x:x1, y:y))
          lines.lineTo(Point(x:x2, y:y1))
          lines.lineTo(Point(x:x, y:y))
          canvas.render(lines)
      }

      func InvertedTriangle(canvas:Canvas, x: Int, y:Int, color:Color.Name)
      {
          let lineWidth = LineWidth(width:2)
          canvas.render(lineWidth)

          let orange = StrokeStyle(color:Color(.black))
          canvas.render(orange)

          let fillStyle = FillStyle(color:Color(color))
          canvas.render(fillStyle)
          
          let x1 = x/7 + x
          let y1 = y - y/5
          let x2 = x - y/5
          
          let lines = Path(fillMode:.fillAndStroke)
          lines.moveTo(Point(x:x, y:y))
          lines.lineTo(Point(x:x1, y:y1))
          lines.lineTo(Point(x:x2, y:y1))
          lines.lineTo(Point(x:x, y:y))
          canvas.render(lines)
      }

      
      func Carrot(canvas: Canvas, x: Int, y: Int)
      {
          RenderTriangle(canvas:canvas, x:x, y:y, color:.darkorange)
          let Lx = x/5 + x
          InvertedTriangle(canvas:canvas, x:Lx, y:y, color:.green)      
  
      }

      override func setup(canvasSize:Size, canvas:Canvas)
      {
          //RenderTriangle(canvas:canvas, x:110, y:150, color:.darkorange)
          //InvertedTriangle(canvas:canvas, x:140, y:150, color:.green)

    
      }

      override func render(canvas:Canvas) {

      }
      
}
