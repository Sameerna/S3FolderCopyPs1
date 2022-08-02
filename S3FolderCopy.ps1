$files = Get-ChildItem "\\nms.pfin.com\PRODUCTION_BACKUPS\SearchIndex\NDC_Preprod_ES_Tenant_Repository\repository_final\indices"
foreach ($f in $files){
    aws s3 cp \\nms.pfin.com\PRODUCTION_BACKUPS\SearchIndex\NDC_Preprod_ES_Tenant_Repository\repository_final\indices\$f s3://mum-pp-esrepository/migration_final2/indices/ --recursive --profile sameerna
}