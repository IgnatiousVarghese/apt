CREATE TABLE "counter" (
	"time"	INTEGER,
	PRIMARY KEY("time")
);

CREATE TABLE "edges" (
"src_id" INTEGER,
  "dest_id" INTEGER,
  "src_type" TEXT,
  "dest_type" TEXT,
  "edge_type" TEXT,
  "logical_time" INTEGER,
  "graph_id" INTEGER
);

CREATE TABLE "graph" (
	"graph_id"	INTEGER,
	PRIMARY KEY("graph_id")
);

CREATE INDEX idx_regularity
on edges (logical_time, src_type, edge_type, dest_type);