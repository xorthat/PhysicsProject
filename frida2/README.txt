This archive contains:

- This README.txt file.
- The file ImageOwners.txt describing the images owners.
- The file Calibration.txt providing camera calibration for all images.
- The matlab file displayall.m allows to display quickly the FRIDA2 database.
- 66 files named LDep-0000??.fdd which contains a floating point array of the depthmap. 
  These images can be used as ground-truth for shape from fog algorithms. Files are
  easily read using matlab, see displayall.m. There is no header is files LDep-0000??.fdd
- 66 png images named LIma-0000??.png of scenes without fog. These images can be used 
  as ground-truth for evaluation of visibility and contrast restoration algorithms.
- 66 png images named U080-0000??.png of scenes with homogeneous fog. 
- 66 png images named K080-0000??.png of scenes with heterogeneous fog. 
- 66 png images named L080-0000??.png of scenes with cloudy homogeneous fog. 
- 66 png images named M080-0000??.png of scenes with cloudy heterogeneous fog. 

The FRIDA2 image database can be downloaded from
http://www.lcpc.fr/english/products/image-databases/article/frida-foggy-road-image-database
and used for research purpose only.

The authors of the FRIDA2 database are: 
Jean-Philippe Tarel (LEPSiS),
Aurelien Cord (LIVIC), 
Houssam Halmaoui (LIVIC),
Dominique Gruyer (LIVIC),
Nicolas Hautiere (LEPSiS)

Any query about the ownership of the FRIDA2 database should be addressed to 
Jean-Philippe.Tarel@ifsttar.fr

Image owner is :
IFSTTAR (previously INRETS-LCPC).
58, boulevard Lefebvre
F-75015 Paris, France

In any publication related to the use of FRIDA2 image database, your are kindly 
requested to cite one of the 2 following references: 

J.-P. Tarel, N. Hautiere, A. Cord, D. Gruyer and H. Halmaoui, 
"Improved Visibility of Road Scene Images under Heterogeneous Fog", 
in Proceedings of IEEE Intelligent Vehicles Symposium (IV'10), 
San Diego, CA, USA, June 21-24, 2010. 
http://perso.lcpc.fr/tarel.jean-philippe/publis/iv10.html

J.-P. Tarel, N. Hautiere, L. Caraffa, A. Cord, H. Halmaoui and D. Gruyer,
"Vision Enhancement in Homogeneous and Heterogeneous Fog",
in IEEE Intelligent Transportation Systems Magazine, 4:(2), 
p. 6-20, Summer 2012.
http://perso.lcpc.fr/tarel.jean-philippe/publis/itsm12.html


