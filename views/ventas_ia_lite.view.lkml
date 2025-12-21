view: ventas_ia_lite {
  sql_table_name: `Gemini_Enterprise.VENTAS_IA_LITE` ;;

  dimension: cantidad_total {
    type: number
    sql: ${TABLE}.Cantidad_Total ;;
  }
  dimension: categoria_del_producto {
    type: string
    sql: ${TABLE}.Categoria_del_Producto ;;
  }
  dimension: ciudad_o_poblacion {
    type: string
    sql: ${TABLE}.Ciudad_o_Poblacion ;;
  }
  dimension: costo_total {
    type: number
    sql: ${TABLE}.Costo_Total ;;
  }
  dimension: familia_del_producto {
    type: string
    sql: ${TABLE}.Familia_del_Producto ;;
  }
  dimension_group: fecha_mes {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha_Mes ;;
  }
  dimension: ganancia_total {
    type: number
    sql: ${TABLE}.Ganancia_Total ;;
  }
  dimension: grupo_del_producto {
    type: string
    sql: ${TABLE}.Grupo_del_Producto ;;
  }
  dimension: identificador_de_sucursal {
    type: number
    sql: ${TABLE}.Identificador_de_Sucursal ;;
  }
  dimension: laboratorio_fabricante {
    type: string
    sql: ${TABLE}.Laboratorio_Fabricante ;;
  }
  dimension: nombre_de_la_sucursal {
    type: string
    sql: ${TABLE}.Nombre_de_la_Sucursal ;;
  }
  dimension: nombre_del_producto {
    type: string
    sql: ${TABLE}.Nombre_del_Producto ;;
  }
  dimension: venta_total {
    type: number
    sql: ${TABLE}.Venta_Total ;;
  }
  measure: count {
    type: count
  }
}
