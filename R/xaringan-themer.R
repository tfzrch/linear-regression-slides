#' Compose a css linear gradient
#'
css_lg <- function(dir, values, p = pal) {
  start <- glue::glue("linear-gradient({dir}, ")
  
  values <- map(values, function(x) {
    x[1] <- p[[x[1]]]
    str_c(x, collapse = "")
  })
  
  values <- values %>% 
    str_c(collapse = ", ")
  
  end <- ")"
  paste0(start, values, end)
}

#' Set the xaringan theme
#' 
xaringan_theme <- function(pal, ...) {
  
  xaringanthemer::style_duo_accent(
    
    # Basic colours
    black_color = pal$raisin.black,
    white_color = pal$cultured,
    
    # Element colours
    link_color = pal$turquoise,
    primary_color = pal$space.cadet,
    secondary_color = pal$queen.blue,
    
    # Bold colour
    text_bold_color =  pal$queen.blue,
    
    # Basic font sizes
    base_font_size = "20px",
    text_font_size = "30px",
    
    # Basic font family
    text_font_family = "Noto Sans",
    
    # Inverse slide text
    inverse_header_color = pal$cultured,
    inverse_text_color = pal$cultured,
    
    # Inverse slide background
    inverse_background_color = pal$raisin.black,
    
    # Title slide 
    title_slide_background_image = "img/background-dan-cristian-padure-01.jpg",
    title_slide_text_color = pal$space.cadet,
    
    # Code font
    code_font_family = "Noto Mono",
    code_inline_font_size = 12,
    code_inline_color = pal$vermilion,
    code_inline_background_color = pal$cultured,
    
    # Other args
    ...
  )
}