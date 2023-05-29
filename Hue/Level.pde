public class Level {
  color[][] grid;
  color[][] grid2;
  

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
    int tileSizeX = width/tilesX;
    int tileSizeY = height/tilesY;
    int offsetX = tileSizeX/2;
    int offsetY = tileSizeY/2;
    for (int i = 0; i < tilesY; i++) {
      for (int j = 0; j < tilesX; j++) {
          fill(grid[i][j]);
          rect(j*tileSizeX + offsetX, i*tileSizeY + offsetY, tileSizeX, tileSizeY);
    }
    
     // Calculate the circle size
     int circleSize = 10;
    // float circleX = x + tileSizeX * 0.5; // Calculate the x-coordinate of the circle center
    // float circleY = y + tileSizeY * 0.5; // Calculate the y-coordinate of the circle center
    for (int x = 0; x < tilesY*2; x += 2) {
      for (int y = 0; y < tilesX*2; y += 4) {
          fill(0);
          circle(tileSizeX * 0.5 * y + offsetX, tileSizeY * 0.5 * x + offsetY, circleSize);
      }    
    }
   }
  }

 void hard() {
   grid2 = new color[][] { {#A7C8AB, #A1C9B1, #9CC6B8, #9AC7C0, #96C3C1, #99C7CC, #A4CCCC, #AFD0CF, #B7D4D0, #BFD6D2, #C0D4D0},
                           {#94C3B0, #90C2B7, #8DC2BE, #8BC1C3, #8AC2C9, #8BC3D0, #9AC8D1, #A6CDD4, #B0D1D7, #B9D5D7, #B9CDCE},
                           {#82BDB5, #81BDBD, #7DBCC3, #7EBECA, #7EBCCD, #82C0D7, #8EC4D6, #9DCAD9, #A7CDD9, #B1D2DB, #B4CFD7},
                           {#6FB7BB, #6FB7C3, #6EB8C9, #6EB9CD, #6FB8D4, #72B9D7, #84C2DA, #91C6DC, #9EC9DC, #ABD1E0, #AECEDB},
                           {#5EB1C1, #5DB2C7, #5FB3CF, #61B5D5, #65B7DB, #67B5DF, #77BDE1, #89C5E3, #97C9E4, #A4CEE5, #A9CADD},
                           {#4BACC8, #4CAECD, #4DADD1, #52B0DB, #56AFDC, #5BB4E3, #6EBBE7, #7EC0E7, #8CC5E6, #9CCCE9, #A8D0EA},
                           {#3AA5CE, #3CA7D3, #3EA7D6, #43ABDE, #49ACE3, #50B1EB, #64B8EC, #76BEEC, #86C3ED, #96CAEF, #A3CBEE},
                           {#28A0D2, #2AA1D7, #2FA4DD, #36A7E5, #3CABEA, #46ADF1, #5AB4F2, #6CBCF1, #7DC0F1, #8EC7F2, #9BCAEF},
                           {#169BD8, #1B9CDF, #209FE5, #27A2EB, #2FA6F0, #39A8F3, #4EB1F5, #64B8F5, #76BFF7, #88C5F9, #93C4F2},
                           {#0496DD, #0A96E3, #109AEA, #189DEF, #22A0F4, #2CA3F6, #44AEFB, #57B5FA, #6DBBFA, #80C3FD, #8FC5F7},
   };
   int tilesX = 11;
   int tilesY = 10;
   int tileSizeX = width/tilesX;
   int tileSizeY = height/tilesY;
   int offsetX = tileSizeX/2;
   int offsetY = tileSizeY/2;
    for (int i = 0; i < tilesY; i++) {
      for (int j = 0; j < tilesX; j++) {
          fill(grid2[i][j]);
          rect(j*tileSizeX + offsetX, i*tileSizeY + offsetY, tileSizeX, tileSizeY);
      }
    }
    int circleSize = 10;
    fill(0);
    circle(offsetX, offsetY, circleSize);
    circle(width - offsetX, offsetY, circleSize);
    circle(width - offsetX, height - offsetY, circleSize);
    circle(offsetX, height - offsetY, circleSize);
  }
   
 }
 
  
