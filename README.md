# Flutter Examples

# Dart
- User interface optimized
- Event driven
- Null safety
- Spread operator
- Collection if
- Hot relaod development environment

## Architecture([Ref](https://mobappdaily.medium.com/everything-you-need-to-know-about-flutter-app-development-aa372ea3e581))

- Framework Layer
- Engine Layer
- Embedded Layer

## Dart, OOP, Asynchrous Progarmming

## Widget

### StatelessWidget Vs StatefulWidget

- Immutable class
- Call once 'build' function 

## Lifecycle

### Statefull

- constructor()
- createState()
  - initState() : Call once
- deactivate(): Temporary or permanent deletion
- dispose(): permanent deletion

Builds from a dirty state and then changes to a clean state

### Update state(stateful)

- setState()
- dirty state
- build()
- clean state

### Gesture

- TextButton
- OutlinedButton
- ElevatedButton
- IconButton
- GestureDetector
- FloatingActionButton

### Design

- Container
- SizedBox
- Padding
- SafeArea

### Layout

- Row(MainAxis, CrossAxis)
- Columns(MainAxis, CrossAxis)
- Flexible(fit: FlexFit.loose)
- Expanded(fit: FlexFit.tight)
- Stack(Overlay)

