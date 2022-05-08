import Foundation
import Scenes
import Igis

  /*
     This class is responsible for rendering the background.
   */


class Background : RenderableEntity {

    let notebook : Image
    
    init() {

        guard let notebookURL = URL(string:"https://pbs.twimg.com/media/FR7pNikXMAABmgq?format=jpg&name=large") else {
            fatalError("Failed to create URL for notebook")
        }
        notebook = Image(sourceURL:notebookURL)
        
          // Using a meaningful name can be helpful for debugging
          super.init(name:"Background")
    }

   override func setup(canvasSize:Size, canvas:Canvas) {
        canvas.setup(notebook)

        let rect = Rect(topLeft:Point(x:10, y:50), size:Size(width:2000, height:1000))
        let rectangle = Rectangle(rect:rect)
        let fillStyle = FillStyle(color:Color(.white))
        canvas.render(fillStyle, rectangle)
    }


    

    override func render(canvas:Canvas) {
        if notebook.isReady {
            canvas.render(notebook)
        }
   }


}
