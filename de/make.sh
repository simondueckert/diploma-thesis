#PATH=$PATH:/opt/homebrew/bin
echo Starting Document Generation ...

# Variables
filename="2000-Diplomarbeit-simondueckert-de"
chapters="./src/index.md ./src/2-0-preface.md ./src/3-0-introduction.md ./src/4-0-considerations.md ./src/5-0-conception.md ./src/6-0-verification.md ./src/7-0-outlook.md ./src/8-0-glossary.md ./src/9-0-bibliography.md"

# Delete Old Versions
#echo Deleting old versions ...
rm -rf $filename.*
rm -rf ../docs/de/*
#rm -ff ../docs/de-slides/index.html

# Create Web Version (mkdocs)
echo Creating Web Version ...
mkdocs build

# Create Microsoft Word Version (docx)
echo Creating Word version ...
pandoc metadata.yaml -s --resource-path="./src" -N --toc -V lang=de-de -o $filename.docx $chapters

# Create HTML Version (html)
echo Creating HTML version ...
pandoc metadata.yaml -s --resource-path="./src" -N --toc -V lang=de-de -o $filename.html $chapters

# Create PDF Version (pdf)
echo Creating PDF version ...
pandoc metadata.yaml -s --resource-path="./src" --template lernos -N --toc -V lang=de-de --bibliography=DiplomarbeitSD.bib --csl=din-1505-2.csl --citeproc -o $filename.pdf $chapters

# Create eBook Versions (epub, mobi)
echo Creating eBook versions ...
# magick -density 300 $filename.pdf[0] ebook-cover.jpg
# mogrify -size 2500x2500 -resize 2500x2500 ebook-cover.jpg
# mogrify -crop 1563x2500+102+0 ebook-cover.jpg
pandoc metadata.yaml -s --resource-path="./src" -N --toc -V lang=de-de -o $filename.epub $chapters
# ebook-convert $filename.epub $filename.mobi

# Create Slides (revealjs)
# echo Creating Presentation ...
# pandoc metadata.yaml --from markdown -s --resource-path="./src" -t revealjs -V theme=night -s ./slides/index.md -o ../docs/de-slides/index.html

# Remove Unnecessary Files
# rm mermaid-filter.err
# rm ebook-cover.jpg
