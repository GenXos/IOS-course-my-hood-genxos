//
//  PostCell.swift
//  my-hood-genxos
//
//  Created by Todd Fields on 2015-12-31.
//  Copyright © 2015 Todd Fields. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

  @IBOutlet weak var postImg: UIImageView!
  @IBOutlet weak var titleLbl: UILabel!
  @IBOutlet weak var descLbl: UILabel!
  
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
  }

  func configureCell(post: Post) {
    
    titleLbl.text = post.title
    descLbl.text = post.postDesc
  }
  
}
