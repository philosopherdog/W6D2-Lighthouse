import UIKit
import PlaygroundSupport

let containerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 575.0))
containerView.backgroundColor = .red

PlaygroundPage.current.liveView = containerView

let greenView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
greenView.center = CGPoint(x: containerView.center.x, y: 25)
greenView.backgroundColor = .green
containerView.addSubview(greenView)

/*
UIView.animate(withDuration: 2.0) { 
}

UIView.animate(withDuration: 2.0, animations: { 
  greenView.transform = CGAffineTransform(scaleX: 2, y: 2)

}) { _ in
   UIView.animate(withDuration: 2.0, animations: { 
    greenView.transform = .identity
   })
}
*/

//UIView.animate(withDuration: 2.0, delay: 0, options: .curveEaseIn, animations: {
//    
//    
//}, completion: nil)

/*

let translation = CGAffineTransform(translationX: greenView.bounds.origin.x, y: containerView.frame.maxY-greenView.bounds.size.height)

greenView.transform = translation


func animate() {
  UIView.animate(withDuration: 2.0, delay: 0, options: [.curveEaseInOut], animations: {
    greenView.transform = .identity
  }) { _ in
    UIView.animate(withDuration: 2.0, animations: { 
      greenView.transform = translation
    })
  }
}


animate()

*/


/*
// Spring Animation
greenView.center = CGPoint(x: greenView.center.x, y: containerView.frame.maxY-greenView.bounds.size.height)

UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.75, options: [.curveEaseInOut], animations: {
  let newCenter = CGPoint(x: containerView.center.x, y:greenView.bounds.size.height)
  greenView.center = newCenter
}) { _ in
  
}




UIView.animate(withDuration: 2.0, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 4, options: [], animations: {
    greenView.center = CGPoint(x: greenView.center.x, y: greenView.bounds.size.height/2)
}, completion: nil)

*/

/*
UIView.animateKeyframes(withDuration: 2.0, delay: 0, options: [], animations: { 
    
    UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.25, animations: { 
        greenView.transform = CGAffineTransform(rotationAngle: .pi)
    })
    
    UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25, animations: {
        greenView.transform = CGAffineTransform(rotationAngle: CGFloat(0.5 * .pi))
    })
    
}, completion: nil)

*/






