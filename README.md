# cargoR

install & use this package by:

```
pak::pak("rainoffallingstar/cargor")
# try to run
library(cargoR)
cargoR::cargo_check("rustlearner")
cargoR::cargo_run("rustlearner")
rust_pkg <- c("ndarray", "rand", "plotters", "serde", "diesel") %>%
            cargoR::cargo_add("rustlearner")
```
