double floatingButtonSize = MAX_FLOATING_BUTTON_SIZE;
const double MAX_FLOATING_BUTTON_SIZE = 45.0;

const double bottomBarHeight = 60.0;
const double ABOUT_ME_CIRCLE_RADIUS = 160;

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
