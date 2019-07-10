## Pascal3D+
cd Pascal3D
wget 'ftp://cs.stanford.edu/cs/cvgl/PASCAL3D+_release1.1.zip'
unzip PASCAL3D+_release1.1.zip && rm PASCAL3D+_release1.1.zip
mv PASCAL3D+_release1.1/* ./ && rm -r PASCAL3D+_release1.1
rm CAD/*.mat && python off2obj.py
python create_annotation.py
python render.py
cd ..

## ObjectNet3D
cd ObjectNet3D
wget 'ftp://cs.stanford.edu/cs/cvgl/ObjectNet3D/ObjectNet3D_images.zip'
unzip ObjectNet3D_images.zip && rm ObjectNet3D_images.zip
mv ObjectNet3D/* ./ && rm -r ObjectNet3D
wget 'ftp://cs.stanford.edu/cs/cvgl/ObjectNet3D/ObjectNet3D_cads.zip'
unzip ObjectNet3D_cads.zip && rm ObjectNet3D_cads.zip
mv ObjectNet3D/* ./ && rm -r ObjectNet3D
wget 'ftp://cs.stanford.edu/cs/cvgl/ObjectNet3D/ObjectNet3D_annotations.zip'
unzip ObjectNet3D_annotations.zip && rm ObjectNet3D_annotations.zip
mv ObjectNet3D/* ./ && rm -r ObjectNet3D
wget 'ftp://cs.stanford.edu/cs/cvgl/ObjectNet3D/ObjectNet3D_image_sets.zip'
unzip ObjectNet3D_image_sets.zip && rm ObjectNet3D_image_sets.zip
mv ObjectNet3D/* ./ && rm -r ObjectNet3D
python off2obj.py
python create_annotation.py
python render.py
cd ..

## Pix3D
cd Pix3D
wget 'http://pix3d.csail.mit.edu/data/pix3d.zip'
unzip pix3d.zip && rm pix3d.zip
python clean_dataset.py
python create_annotation.py
python render.py

wget 'vision.princeton.edu/projects/2010/SUN/SUN397.tar.gz'
python create_list.py

