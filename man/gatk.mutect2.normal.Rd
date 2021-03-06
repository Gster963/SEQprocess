% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/10_variant.call.MuTect2.R
\name{gatk.mutect2.normal}
\alias{gatk.mutect2.normal}
\title{gatk.mutect2.normal}
\usage{
gatk.mutect2(normal.bam, sample.name, ref.dbSNP, cosmic.vcf, output.dir, run.cmd=TRUE, mc.cores=1)
}
\arguments{
\item{normal.bam}{BAM files of normal samples}

\item{sample.name}{A character vector for the sample names}

\item{ref.dbSNP}{Known SNP sites reference vcf}

\item{cosmic.vcf}{Known variant sites of cosmic database vcf file}

\item{output.dir}{Output directory}

\item{run.cmd}{Whether to execute the command line (default=TRUE)}

\item{mc.cores}{The number of cores to use. Must be at least one(default=1), and parallelization requires at least two cores.}
}
\value{
Only normal sample vcf files.
}
\description{
A wrapper function to run GATK (MuTect2)
}
\details{
MuTect2 is a somatic SNP and indel caller that combines the DREAM challenge-winning somatic genotyping engine of the original 
         MuTect (Cibulskis et al., 2013) with the assembly-based machinery of HaplotypeCaller. This function takes normal samples as 
         input to make the panel of normal (pon).
}
\references{
Sensitive detection of somatic point mutations in impure and heterogeneous cancer samples
}
\seealso{
\url{https://software.broadinstitute.org/gatk/documentation/tooldocs/3.8-0/org_broadinstitute_gatk_tools_walkers_cancer_m2_MuTect2.php}
}
