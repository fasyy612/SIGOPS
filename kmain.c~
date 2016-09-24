#define COLOR_RED 0
#define COLOR_BLACK 4

char *fb = (char*) 0x000B8000;

/**
 * fb_write_cell:
 * Writes a character with given foreground and background to position i
 * in the framebuffer.
 *
 * @param i The location in the framebuffer
 * @param character The character
 * @param fg_color The foreground color
 * @param bg_color The background color
 */
void fb_write_cell(unsigned int i, char c, unsigned char fg_color, unsigned char bg_color) {
  fb[i] = c;
  fb[i+1] = ((fg_color & 0x0F) << 4 | (bg_color & 0x0F));
}

void kmain(void) {

  // Move value into ESI for testing
  asm volatile("movl $0xFFEEDD, %esi");

  // Print text
  fb_write_cell(0, 'T', COLOR_RED, COLOR_BLACK);
  fb_write_cell(2, 'H', COLOR_RED, COLOR_BLACK);
  fb_write_cell(4, 'A', COLOR_RED, COLOR_BLACK);
  fb_write_cell(6, 'L', COLOR_RED, COLOR_BLACK);
  fb_write_cell(8, 'L', COLOR_RED, COLOR_BLACK);

  // Loop
  asm volatile(".1: hlt; jmp .1;");
  
} 
