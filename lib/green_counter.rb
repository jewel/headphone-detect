require 'inline'

class GreenCounter
  inline do |builder|
    builder.add_compile_flags '-O3 -Wall'
    builder.c '
int green( VALUE image_str) {
  int i = 0;
  char* image = StringValuePtr( image_str );
  int size = RSTRING_LEN( image_str );
  int count = 0;
  unsigned char r, g, b;
  for( i = 0; i < size; i += 3 ) {
    r = image[i+0];
    g = image[i+1];
    b = image[i+2];
    if( g > 128 && r < 64 && b < 64 )
      count ++;
  }
  return count;
}

'
  end
end
