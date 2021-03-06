# ncRna.sql was originally generated by the autoSql program, which also 
# generated ncRna.c and ncRna.h.  This creates the database representation of
# an object which can be loaded and saved from RAM in a fairly 
# automatic way.

#non-protein-coding genes
CREATE TABLE ncRna (
    bin smallint not null,		# bin for browser speed up
    chrom varchar(255) not null,	# Reference sequence chromosome or scaffold
    chromStart int unsigned not null,	# genomic start position
    chromEnd int unsigned not null,	# gnomic end position
    name varchar(255) not null,		# Name of gene
    score int not null,			# unused
    strand char(1) not null,		# + or - for strand
    thickStart int unsigned not null,	# unused
    thickEnd int unsigned not null,	# unused
    type varchar(255) not null,		# type of gene
    extGeneId varchar(255),		# external gene ID
              #Indices
    KEY(name),
    KEY(extGeneId)
);
