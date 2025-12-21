connection: "gemini_enterprise"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: farmapronto_ca_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: farmapronto_ca_default_datagroup

explore: ventas_ia_lite {}

explore: ventas_optimizada_ai {}

explore: ventas_optimizada_ai_v2 {}

