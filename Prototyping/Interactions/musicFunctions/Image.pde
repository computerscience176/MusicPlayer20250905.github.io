<<<<<<< HEAD
/* Image Subprogram
 * Handles image loading, aspect ratio calculation, and display
 */

void imageSetup() {
  // Set image DIV dimensions
  pictureDivX = appWidth * 1/16;
  pictureDivY = appHeight * 1.5/24;
  pictureDivWidth = appWidth * 14/16;
  pictureDivHeight = appHeight * 6.5/24;
  
  // Directory or Pathway, Concatenation
  String upArrow = "../../../";
  String folder = "Images/";
  
  // File names for images
  String[] fileName = new String[numberOfImages];
  fileName[0] = "fatiha";
  fileName[1] = "baqarah";
  fileName[2] = "aliimran";
  
  // File extensions
  String[] fileExtension = new String[numberOfImages];
  fileExtension[0] = ".jpg";
  fileExtension[1] = ".png";
  fileExtension[2] = ".png";
  
  // Build full pathways
  String[] imagePathway = new String[numberOfImages];
  for (int i = 0; i < numberOfImages; i++) {
    imagePathway[i] = upArrow + folder + fileName[i] + fileExtension[i];
  }
  
  // Load error image as fallback
  PImage errorImage = loadImage("flower.jpg");
  
  // Load all images
  println("Loading images...");
  for (int i = 0; i < numberOfImages; i++) {
    songImages[i] = loadImage(imagePathway[i]);
    
    // Error check - use error image if load failed
    if (songImages[i] == null) {
      println("ERROR: Image", i, "failed to load from:", imagePathway[i]);
      println("Using error image instead");
      songImages[i] = errorImage;
    } else {
      println("✓ Image", i, "loaded:", fileName[i]);
      
      // Calculate aspect ratio and adjusted dimensions
      calculateImageDimensions(i);
    }
  }
  
  println("Image setup complete!");
} // End imageSetup

// Calculate aspect ratio and fit image to DIV
void calculateImageDimensions(int i) {
  int imageWidth = songImages[i].width;
  int imageHeight = songImages[i].height;
  
  // Calculate aspect ratio (always > 1)
  float imageAspectRatio_GreaterOne = (imageWidth >= imageHeight) 
    ? float(imageWidth) / float(imageHeight)
    : float(imageHeight) / float(imageWidth);
  
  println("Image " + i + " Aspect Ratio:", imageAspectRatio_GreaterOne);
  
  // Initial fit to DIV width
  imageWidthAdjusted[i] = pictureDivWidth;
  imageHeightAdjusted[i] = (imageWidth >= imageHeight)
    ? imageWidthAdjusted[i] / imageAspectRatio_GreaterOne
    : imageWidthAdjusted[i] * imageAspectRatio_GreaterOne;
  
  // If height exceeds DIV, scale down using percentage reduction
  if (imageHeightAdjusted[i] > pictureDivHeight) {
    int iterationCount = 0;
    int maxIterations = 10000;
    
    println("Image " + i + " too tall, scaling down...");
    
    while (imageHeightAdjusted[i] > pictureDivHeight && iterationCount < maxIterations) {
      iterationCount++;
      
      // Scale down by 16% per iteration
      imageWidthAdjusted[i] *= 0.84;
      imageHeightAdjusted[i] = (imageWidth >= imageHeight)
        ? imageWidthAdjusted[i] / imageAspectRatio_GreaterOne
        : imageWidthAdjusted[i] * imageAspectRatio_GreaterOne;
    }
    
    if (iterationCount >= maxIterations) {
      println("ERROR: Infinite loop detected for image", i);
      imageHeightAdjusted[i] = pictureDivHeight;
    }
    
    println("✓ Image " + i + " scaled after", iterationCount, "iterations");
  }
  
  println("Final dimensions for image " + i + ":", 
          imageWidthAdjusted[i], "x", imageHeightAdjusted[i]);
} // End calculateImageDimensions

// Draw the current song's image
void drawCurrentImage() {
  // Draw image DIV border (for debugging)
  // noFill();
  // stroke(resetInkDay);
  // strokeWeight(2);
  // rect(pictureDivX, pictureDivY, pictureDivWidth, pictureDivHeight);
  
  // Calculate centered position for image
  float drawX = pictureDivX + (pictureDivWidth - imageWidthAdjusted[imageIndex]) / 2;
  float drawY = pictureDivY + (pictureDivHeight - imageHeightAdjusted[imageIndex]) / 2;
  
  // Draw the image
  if (songImages[imageIndex] != null) {
    image(songImages[imageIndex], drawX, drawY, 
          imageWidthAdjusted[imageIndex], imageHeightAdjusted[imageIndex]);
  }
} // End drawCurrentImage

// Update which image to display based on current song
void updateImageForSong() {
  // Map song index to image index
  // Assuming 1:1 mapping for now
  if (currentSong < numberOfImages) {
    imageIndex = currentSong;
  } else {
    imageIndex = 0; // Default to first image if out of range
  }
} // End updateImageForSong

// End Image Subprogram
=======
/* Image Subprogram
 * Handles image loading, aspect ratio calculation, and display
 */

void imageSetup() {
  // Set image DIV dimensions
  pictureDivX = appWidth * 1/16;
  pictureDivY = appHeight * 1.5/24;
  pictureDivWidth = appWidth * 14/16;
  pictureDivHeight = appHeight * 6.5/24;
  
  // Directory or Pathway, Concatenation
  String upArrow = "../../../";
  String folder = "Images/";
  
  // File names for images
  String[] fileName = new String[numberOfImages];
  fileName[0] = "fatiha";
  fileName[1] = "baqarah";
  fileName[2] = "aliimran";
  
  // File extensions
  String[] fileExtension = new String[numberOfImages];
  fileExtension[0] = ".jpg";
  fileExtension[1] = ".png";
  fileExtension[2] = ".png";
  
  // Build full pathways
  String[] imagePathway = new String[numberOfImages];
  for (int i = 0; i < numberOfImages; i++) {
    imagePathway[i] = upArrow + folder + fileName[i] + fileExtension[i];
  }
  
  // Load error image as fallback
  PImage errorImage = loadImage("flower.jpg");
  
  // Load all images
  println("Loading images...");
  for (int i = 0; i < numberOfImages; i++) {
    songImages[i] = loadImage(imagePathway[i]);
    
    // Error check - use error image if load failed
    if (songImages[i] == null) {
      println("ERROR: Image", i, "failed to load from:", imagePathway[i]);
      println("Using error image instead");
      songImages[i] = errorImage;
    } else {
      println("✓ Image", i, "loaded:", fileName[i]);
      
      // Calculate aspect ratio and adjusted dimensions
      calculateImageDimensions(i);
    }
  }
  
  println("Image setup complete!");
} // End imageSetup

// Calculate aspect ratio and fit image to DIV
void calculateImageDimensions(int i) {
  int imageWidth = songImages[i].width;
  int imageHeight = songImages[i].height;
  
  // Calculate aspect ratio (always > 1)
  float imageAspectRatio_GreaterOne = (imageWidth >= imageHeight) 
    ? float(imageWidth) / float(imageHeight)
    : float(imageHeight) / float(imageWidth);
  
  println("Image " + i + " Aspect Ratio:", imageAspectRatio_GreaterOne);
  
  // Initial fit to DIV width
  imageWidthAdjusted[i] = pictureDivWidth;
  imageHeightAdjusted[i] = (imageWidth >= imageHeight)
    ? imageWidthAdjusted[i] / imageAspectRatio_GreaterOne
    : imageWidthAdjusted[i] * imageAspectRatio_GreaterOne;
  
  // If height exceeds DIV, scale down using percentage reduction
  if (imageHeightAdjusted[i] > pictureDivHeight) {
    int iterationCount = 0;
    int maxIterations = 10000;
    
    println("Image " + i + " too tall, scaling down...");
    
    while (imageHeightAdjusted[i] > pictureDivHeight && iterationCount < maxIterations) {
      iterationCount++;
      
      // Scale down by 16% per iteration
      imageWidthAdjusted[i] *= 0.84;
      imageHeightAdjusted[i] = (imageWidth >= imageHeight)
        ? imageWidthAdjusted[i] / imageAspectRatio_GreaterOne
        : imageWidthAdjusted[i] * imageAspectRatio_GreaterOne;
    }
    
    if (iterationCount >= maxIterations) {
      println("ERROR: Infinite loop detected for image", i);
      imageHeightAdjusted[i] = pictureDivHeight;
    }
    
    println("✓ Image " + i + " scaled after", iterationCount, "iterations");
  }
  
  println("Final dimensions for image " + i + ":", 
          imageWidthAdjusted[i], "x", imageHeightAdjusted[i]);
} // End calculateImageDimensions

// Draw the current song's image
void drawCurrentImage() {
  // Draw image DIV border (for debugging)
  // noFill();
  // stroke(resetInkDay);
  // strokeWeight(2);
  // rect(pictureDivX, pictureDivY, pictureDivWidth, pictureDivHeight);
  
  // Calculate centered position for image
  float drawX = pictureDivX + (pictureDivWidth - imageWidthAdjusted[imageIndex]) / 2;
  float drawY = pictureDivY + (pictureDivHeight - imageHeightAdjusted[imageIndex]) / 2;
  
  // Draw the image
  if (songImages[imageIndex] != null) {
    image(songImages[imageIndex], drawX, drawY, 
          imageWidthAdjusted[imageIndex], imageHeightAdjusted[imageIndex]);
  }
} // End drawCurrentImage

// Update which image to display based on current song
void updateImageForSong() {
  // Map song index to image index
  // Assuming 1:1 mapping for now
  if (currentSong < numberOfImages) {
    imageIndex = currentSong;
  } else {
    imageIndex = 0; // Default to first image if out of range
  }
} // End updateImageForSong

// End Image Subprogram
>>>>>>> a9c81e9804f784f831fab4caab282e67cecf8aee
