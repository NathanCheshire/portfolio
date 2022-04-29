double floatingButtonSize = 45.0;
const double bottomBarHeight = 60.0;

int currentIndex = 0;

setFloatingButtonSize(double _floatingButtonSize) {
  floatingButtonSize = _floatingButtonSize;
}

setCurrentIndex(index) {
  currentIndex = index;
}

getCurrentIndex() {
  return currentIndex;
}
