USE mythconverg;
SELECT DISTINCT SUBSTRING(d.mod_sys, 5), d.frequency, UPPER(d.polarity), d.symbolrate, d.fec, d.rolloff * 100, UPPER(d.constellation) FROM dtv_multiplex AS d INNER JOIN channel ON d.mplexid = channel.mplexid ORDER BY d.frequency INTO OUTFILE '/tmp/Astra_freesat' FIELDS TERMINATED BY ' ' LINES TERMINATED BY '\n';
