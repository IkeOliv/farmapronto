
view: venta_por_sucursal {
  derived_table: {
    sql: SELECT
          SUM(ventas_optimizada_ai.`Costo Total de la Venta` ) ,
          ventas_optimizada_ai.`Nombre de la Sucursal`
      FROM `Gemini_Enterprise.VENTAS_OPTIMIZADA_AI`  AS ventas_optimizada_ai
      group by ventas_optimizada_ai.`Nombre de la Sucursal` ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: f0_ {
    type: number
    sql: ${TABLE}.f0_ ;;
  }

  dimension: nombre_de_la_sucursal {
    type: string
    label: "Nombre de la Sucursal"
    sql: ${TABLE}.`Nombre de la Sucursal` ;;
  }

  set: detail {
    fields: [
        f0_,
	nombre_de_la_sucursal
    ]
  }
}
