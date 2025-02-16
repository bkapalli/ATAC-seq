library(BiocManager)
BiocManager::install(c("ATACseqQC", "ChIPpeakAnno", "MotifDb", "GenomicAlignments",
                       "BSgenome.Hsapiens.UCSC.hg19", "TxDb.Hsapiens.UCSC.hg19.knownGene",
                       "phastCons100way.UCSC.hg19"))

# Load the necessary library
library(ATACseqQC)

# Define the filepaths for your bam and index
rep4_bamfile <- "ATACrep4_shifted_sort.bam"
rep4_index <- "ATACrep4_shifted_sort.bam.bai"

# Use fragSizeDist to calculate and plot the distribution
rep4_plot <- fragSizeDist(rep4_bamfile, rep4_index)


