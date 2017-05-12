# RxNorm postgres setup
Move all RRF files into the root directory
as shown below

```
.
├── build-rxnorm.sh
├── format-rrf-files.sh
├── postgres-create-tables.sql
├── postgres-load-data.sql
├── RXNATOMARCHIVE.RRF
├── RXNCONSO.RRF
├── RXNCUICHANGES.RRF
├── RXNCUI.RRF
├── RXNDOC.RRF
├── RXNREL.RRF
├── RXNSAB.RRF
├── RXNSAT.RRF
└── RXNSTY.RRF
```

## Create RxNorm database

```bash
sudo -u postgres createdb rxnorm postgres
```

## Create tables
```bash
sudo -u postgres psql rxnorm < postgres-create-tables.sql
```

## Load data
```bash
sudo -u postgres psql rxnrom < postgres-load-data.sql
```
