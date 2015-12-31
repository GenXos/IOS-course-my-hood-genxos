//
//  ViewController.swift
//  my-hood-genxos
//
//  Created by Todd Fields on 2015-12-31.
//  Copyright © 2015 Todd Fields. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  @IBOutlet weak var tableView: UITableView!

  var posts = [Post]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
   
    tableView.delegate = self
    tableView.dataSource = self
    
    var post1 = Post(imagePath: "", title: "Post 1", postDesc: "Post 1 Description")
    var post2 = Post(imagePath: "", title: "Post 2", postDesc: "Post 2 Description")
    var post3 = Post(imagePath: "", title: "Post 3", postDesc: "Post 3 Description")
    
    posts.append(post1)
    posts.append(post2)
    posts.append(post3)
    
    tableView.reloadData()
  }

  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    
    return 1
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return posts.count
  }

  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

    let post = posts[indexPath.row]
    if let cell = tableView.dequeueReusableCellWithIdentifier("PostCell") as? PostCell{
      
      cell.configureCell(post)
      return cell
    } else {
      let cell = PostCell()
      cell.configureCell(post)
      return cell
    }
  }
  
  func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
    
    return 87.0
  }
  
}

