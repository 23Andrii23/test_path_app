# Path Finder App

A Flutter app that implements optimal pathfinding algorithms to navigate through obstacle-filled grids, with visualization and API integration.

![Demo](demo.gif)

## Features

- [x] Efficient A* pathfinding algorithm with diagonal movement support
- [x] Real-time processing visualization with progress tracking
- [x] Interactive grid visualization with color-coded elements
- [x] API integration for data fetching and result verification
- [x] Detailed path preview with coordinates
- [x] Multiple path processing and result listing

## App Architecture

The app follows a clean architecture with Riverpod for state management:

### Data Layer
- `HttpService` for API communication
- Freezed models for type-safe data representation

### Domain Layer
- PathFinder algorithm implementing A* search
- Processing logic with progress tracking
- Result validation and verification

### Presentation Layer
- Home screen with URL validation
- Process screen showing calculation progress
- Result list screen displaying all paths
- Preview screen with interactive grid visualization

## State Management

The app uses Riverpod for efficient state management:

- `HomeScreenController` for URL validation
- `ProcessScreenController` for fetching and processing data
- Async state handling for API communication
- Persistent state across screen transitions

## Grid Visualization

The grid visualization system uses color coding to represent different elements:

| Element | Color | Description |
|---------|-------|-------------|
| Start point | #64FFDA | Origin of the path |
| End point | #009688 | Destination to reach |
| Obstacles | #000000 | Blocked cells that can't be traversed |
| Path | #4CAF50 | The optimal route between points |
| Empty cells | #FFFFFF | Traversable space |

## Getting Started

1. Clone the repository
```bash
git clone https://github.com/yourusername/path-finder-app.git
```

Install dependencies

```bash
flutter pub get
```
Run the app

```bash
flutter run
```

Implementation Details

- Supports grid sizes from 2×2 up to 99×99
- Implements diagonal movement with √2 cost (vs. 1.0 for straight moves)
- Uses Euclidean distance heuristic for optimal path estimation
- Handles edge cases like unreachable destinations

Contributing
Contributions are welcome! Please feel free to submit a Pull Request.