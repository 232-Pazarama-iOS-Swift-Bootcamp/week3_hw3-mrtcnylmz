//
//  DetailViewController.swift
//  iTunes Client App
//
//  Created by Pazarama iOS Bootcamp on 2.10.2022.
//

import UIKit

final class DetailViewController: UIViewController {
    
    var podcast: Podcast? {
        didSet {
            title = podcast?.trackName
            detailView.imageView.downloadImage(from: podcast?.artworkLarge)
            detailView.releaseDate = podcast?.releaseDate
            detailView.artistName = podcast?.artistName
            detailView.country = podcast?.country
            detailView.genres = podcast?.genres?.reduce("") { $1 + ", " + $0 }
        }
    }
    
    var movie: Movie? {
        didSet {
            title = movie?.trackName
            detailView.imageView.downloadImage(from: movie?.artworkLarge)
            detailView.releaseDate = movie?.releaseDate
            detailView.artistName = movie?.artistName
            detailView.country = movie?.country
            detailView.descriptions = movie?.shortDescription
            detailView.genres = movie?.primaryGenreName
        }
    }
    
    var music: Music? {
        didSet {
            title = music?.trackName
            detailView.imageView.downloadImage(from: music?.artworkLarge)
            detailView.releaseDate = music?.releaseDate
            detailView.artistName = music?.artistName
            detailView.country = music?.country
            detailView.genres = music?.primaryGenreName
        }
    }
    
    var software: Software? {
        didSet {
            title = software?.trackName
            detailView.imageView.downloadImage(from: software?.artworkLarge)
            detailView.releaseDate = software?.releaseDate
            detailView.artistName = software?.artistName
            detailView.genres = software?.primaryGenreName
        }
    }
    
    var book: Book? {
        didSet {
            title = book?.trackName
            detailView.imageView.downloadImage(from: book?.artworkLarge)
            detailView.releaseDate = book?.releaseDate
            detailView.artistName = book?.artistName
            detailView.genres = book?.genres?.reduce("") { $1 + ", " + $0 }
        }
    }
    
    private let detailView = DetailView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = detailView
    }
}
