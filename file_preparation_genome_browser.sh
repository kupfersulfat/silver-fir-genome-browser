//ladet fasta herunter und entzippt es 
wget https://treegenesdb.org/FTP/Genomes/Abal/v1.1/annotation/Abal.1_1.cds.fa.gz
gzip -d Abal.1_1.fa.gz

//fasta wird aufgesplittet
faSplit byname Abal.1_1.fa ~/genome_browser/splitted/

//gesplittete fastas werden geindext mit samtools in schleife
for FILE in ~/genome_browser/splitted/*; do samtools faidx $FILE; done