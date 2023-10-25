//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Zhang Ji on 10/24/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    var post: Post!
    
    @IBOutlet weak var postImageView: UIImageView!
    
    @IBOutlet weak var captionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        if let caption = post.caption.trimHTMLTags() {
            captionTextView.text = "\(caption)"
        } else {
            captionTextView.text = ""
        }
        
        // MARK: - Configure the image views

        // Unwrap the optional poster path
        if let photo = post.photos.first {
           let url = photo.originalSize.url
        Nuke.loadImage(with: url, into: postImageView)
        }
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
