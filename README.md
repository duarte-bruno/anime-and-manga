# Anime and Manga iOS App

A simple iOS application developed in SwiftUI that integrates the MyAnimeList API to display information about anime and manga in an interactive and elegant manner. This project is designed to showcase technical skills, modern SwiftUI development, MVVM architecture, and external API integration.

## Features

> **WARNING:** This application is currently under development and may not include all of the features listed below. Some functionalities might be incomplete or subject to change.

- **Anime Listing:**  
  Displays a list of popular or recent anime with essential details:
  - **Title:** The name of the anime.
  - **Main Image:** Displayed using `AsyncImage` for asynchronous loading.
  - **Average Rating & Ranking:** Show the anime's rating and its position in rankings.
  - **Short Synopsis:** A brief overview of the anime's plot.

- **Anime Detail:**  
  When an anime is selected, a detailed view is presented that includes:
  - **High Resolution Image:** A larger version of the main image.
  - **Full Title & Complete Synopsis:** Detailed information about the anime.
  - **Episode Count:** Number of episodes available.
  - **Start & End Dates:** Airing schedule details.
  - **Status:** (e.g., "Airing", "Finished Airing")
  - **Genres:** If available, a list of genres associated with the anime.

- **Anime Search:**  
  Allows users to search for anime by keyword, returning filtered results that match the query.

- **Ranking / Top Anime:**  
  Displays a list of top anime sorted by popularity or rating, showcasing data manipulation and sorting techniques.

- **Local Favorites (Optional):**  
  Enables users to mark their favorite anime and save them locally using UserDefaults or CoreData for quick access.

## Technologies Used

- **SwiftUI:** For building modern, responsive user interfaces.
- **Swift Concurrency (async/await):** To perform asynchronous network requests efficiently.
- **MVVM Architecture:** To separate business logic from the UI layer.
- **URLSession:** For integrating with the MyAnimeList API.
- **AsyncImage:** For asynchronous image loading in SwiftUI.
