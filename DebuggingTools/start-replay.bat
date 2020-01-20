echo %time%
sqlcmd -S(local) -dbenchmark -Q"TRUNCATE TABLE benchmark"
sqlcmd -S(local) -dbenchmark_analysis -Q"TRUNCATE TABLE test.Applications"
sqlcmd -S(local) -dbenchmark_analysis -Q"TRUNCATE TABLE test.Databases"
sqlcmd -S(local) -dbenchmark_analysis -Q"TRUNCATE TABLE test.Errors"
sqlcmd -S(local) -dbenchmark_analysis -Q"TRUNCATE TABLE test.Hosts"
sqlcmd -S(local) -dbenchmark_analysis -Q"TRUNCATE TABLE test.Intervals"
sqlcmd -S(local) -dbenchmark_analysis -Q"TRUNCATE TABLE test.Logins"
sqlcmd -S(local) -dbenchmark_analysis -Q"TRUNCATE TABLE test.NormalizedQueries"
sqlcmd -S(local) -dbenchmark_analysis -Q"TRUNCATE TABLE test.WaitStats"
sqlcmd -S(local) -dbenchmark_analysis -Q"TRUNCATE TABLE test.WorkloadDetails"
"c:\program files\workloadtools\sqlworkload.exe" --File "%CD%\replay.json"
echo %time%