library(knitr)
require(markdown)

# installing/loading the package:
if(!require(installr)) {
  install.packages("installr"); require(installr)} #load / install+load installr

knit(input = "Project.R", output = "Report.md")
markdownToHTML('Report.md', 'Report.html', options=c("use_xhml"))
system("pandoc -s Report.md -o Report.pdf")


pandoc('Report.md', format='latex')
