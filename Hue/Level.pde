public class Level {
  color[][] grid;
  

   void easy() {
    grid = new color[][] { {#5D2AE5, #6D2EDD, #7E34C3, #9238BB, #9F3FAA, #B3459E, #C44B90, #D84E81, #E95171, #E9535D},
                           {#5A37E0, #693DD2, #7C42C4, #8E47B7, #9F4CA8, #B25199, #C3558C, #D55A7D, #E36070, #E45F5C},
                           {#5749DE, #694BD1, #7A50C3, #8C55B3, #9C57A5, #AE5D97, #C26089, #D3657B, #E6696D, #E86759},
                           {#5255E1, #645AD7, #775DC1, #8A61B2, #9D65A5, #AE6896, #BC6E85, #D36F77, #E57368, #EF6C56},
                           {#5162D7, #6268CD, #746BBC, #886EB0, #9B71A1, #AC7390, #BF7783, #CF7972, #E47D66, #E87A53},
                           {#4E74D8, #6076CB, #7377BA, #877BAD, #997D9D, #AC7E90, #BD827F, #D28472, #E38761, #E4804D},
                           {#4884DA, #5C86C9, #6F87BC, #8488AA, #96899C, #A98B8B, #BD8C7C, #CF8E6E, #E29060, #E68747},
                           {#4792D4, #5A92C5, #6E94B5, #8294A6, #949597, #A89688, #B9987D, #CC986A, #E2995C, #E7963B},
                           {#46A0D4, #58A0C5, #6BA1B3, #80A2A4, #92A297, #A5A286, #BAA476, #CDA467, #DFA458, #E59D42},
                           {#42AFD0, #55AFC0, #69AFB2, #7EADA2, #91AE92, #A5AE82, #B8AE73, #CDAF64, #DFAD55, #E5A340},
                           {#42BCD2, #53BDC0, #68BCB0, #7DBB9F, #8EBC90, #A4BB80, #B7B971, #CCB860, #DEB750, #E0AF3C},
                           {#3ACECD, #51CCBD, #65CBAF, #79C99C, #8DC78D, #A1C57D, #B6C46C, #C9C25E, #DFC14F, #E5B43C},
                           {#3ADBCA, #4ED9BA, #66D9AE, #78D59C, #8DD28D, #A0D27B, #B5CF6A, #C6CA5A, #DDCB4B, #E5BF35},
    }; 
    int tilesY = 13;
    int tilesX = 10;
    for (int i = 0; i < tilesY; i++) {
      for (int j = 0; j < tilesX; j++) {
          fill(grid[i][j]);
          rect(j*width/10, i*height/13, 54, 720/13);
      }
    }
        
  }
  

  
  
}
