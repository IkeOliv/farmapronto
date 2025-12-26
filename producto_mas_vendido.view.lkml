
view: producto_mas_vendido {
  derived_table: {
    sql: SELECT
          ventas_optimizada_ai.`Nombre del Producto`  AS ventas_optimizada_ai_nombre_del_producto,
          SUM(ventas_optimizada_ai.`Cantidad de Unidades Vendidas`)  AS ventas_optimizada_ai_cantidad_de_unidades_vendidas
      FROM `Gemini_Enterprise.VENTAS_OPTIMIZADA_AI`  AS ventas_optimizada_ai
      WHERE ((( ventas_optimizada_ai.Fecha  ) >= ((DATE('2025-01-01'))) AND ( ventas_optimizada_ai.Fecha  ) < ((DATE_ADD(DATE('2025-01-01'), INTERVAL 1 YEAR)))))
      GROUP BY
          1
      ORDER BY
          2 DESC
      LIMIT 1 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: ventas_optimizada_ai_nombre_del_producto {
    type: string
    sql: ${TABLE}.ventas_optimizada_ai_nombre_del_producto ;;
  }

  dimension: ventas_optimizada_ai_cantidad_de_unidades_vendidas {
    type: number
    sql: ${TABLE}.ventas_optimizada_ai_cantidad_de_unidades_vendidas ;;
  }

  set: detail {
    fields: [
        ventas_optimizada_ai_nombre_del_producto,
	ventas_optimizada_ai_cantidad_de_unidades_vendidas
    ]
  }
}
