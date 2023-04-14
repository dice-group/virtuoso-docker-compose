-- List of possible file extensions taken from https://github.com/dbpedia/virtuoso-sparql-endpoint-quickstart/blob/4b1c70263cd18131828145a795279a0c3ce83bb3/dbpedia-loader/import.sh#L82
ld_dir('/data', '*.nt', '');
ld_dir('/data', '*.nt.gz', '');
ld_dir('/data', '*.nt.bz2', '');

ld_dir('/data', '*.ttl', '');
ld_dir('/data', '*.ttl.gz', '');
ld_dir('/data', '*.ttl.bz2', '');

ld_dir('/data', '*.nq', '');
ld_dir('/data', '*.nq.gz', '');
ld_dir('/data', '*.nq.bz2', '');

ld_dir('/data', '*.owl', '');
ld_dir('/data', '*.owl.gz', '');
ld_dir('/data', '*.owl.bz2', '');

ld_dir('/data', '*.rdf', '');
ld_dir('/data', '*.rdf.gz', '');
ld_dir('/data', '*.rdf.bz2', '');

ld_dir('/data', '*.trig', '');
ld_dir('/data', '*.trig.gz', '');
ld_dir('/data', '*.trig.bz2', '');

ld_dir('/data', '*.xml', '');
ld_dir('/data', '*.xml.gz', '');
ld_dir('/data', '*.xml.bz2', '');

rdf_loader_run();
