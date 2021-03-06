% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/10_variant.call.MuTect2.R
\name{gatk.combinevariants}
\alias{gatk.combinevariants}
\title{gatk.combinevariants}
\usage{
gatk.combinevariants(ref.fa, normal.vcf, minN=2, filteredrecordsmergetype="KEEP_IF_ANY_UNFILTERED", output.dir, run.cmd=TRUE, mc.cores=1)
}
\arguments{
\item{ref.fa}{Reference fasta file}

\item{normal.vcf}{Normal sample vcfs list}

\item{minN}{Parameter value for -minN in GATK CombineVariants. Minimum number of samples to call the variant (default=2)}

\item{filteredrecordsmergetype}{A parameter value for --filteredrecordsmergetype in GATK CombineVariants. Determines how to handle records seen at the same site in the VCF}

\item{output.dir}{Output directory}

\item{run.cmd}{Whether to execute the command line (default=TRUE)}

\item{mc.cores}{The number of cores to use. Must be at least one(default=1), and parallelization requires at least two cores.}
}
\value{
pon(panel of normal) vcf file
}
\description{
A wrapper function to run GATK (CombineVariants)
}
\details{
The MuTect2 pipeline employs a "Panel of Normal" to identify additional germline mutations. This method enables a higher 
         level of confidence to be assigned to somatic variants that are called by the MuTect2 pipeline.
}
\references{
Sensitive detection of somatic point mutations in heterogeneous cancer samples
}
\seealso{
\url{https://software.broadinstitute.org/gatk/documentation/tooldocs/3.8-0/org_broadinstitute_gatk_tools_walkers_cancer_m2_MuTect2.php}
}
