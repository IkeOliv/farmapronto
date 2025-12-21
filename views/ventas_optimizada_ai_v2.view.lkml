view: ventas_optimizada_ai_v2 {
  sql_table_name: `Gemini_Enterprise.VENTAS_OPTIMIZADA_AI_V2` ;;

  dimension: anio_fiscal {
    type: number
    sql: ${TABLE}.Anio_Fiscal ;;
  }
  dimension: cantidad_de_unidades_vendidas {
    type: number
    sql: ${TABLE}.Cantidad_de_Unidades_Vendidas ;;
  }
  dimension: categoria_del_producto {
    type: string
    sql: ${TABLE}.Categoria_del_Producto ;;
  }
  dimension: ciudad_o_poblacion {
    type: string
    sql: ${TABLE}.Ciudad_o_Poblacion ;;
  }
  dimension: codigo_de_barras_ean {
    type: string
    sql: ${TABLE}.Codigo_de_Barras_EAN ;;
  }
  dimension: codigo_interno_del_producto {
    type: string
    sql: ${TABLE}.Codigo_Interno_del_Producto ;;
  }
  dimension: costo_total_de_la_venta {
    type: number
    sql: ${TABLE}.Costo_Total_de_la_Venta ;;
  }
  dimension: costo_unitario_de_adquisicion {
    type: number
    sql: ${TABLE}.Costo_Unitario_de_Adquisicion ;;
  }
  dimension: direccion_de_la_sucursal {
    type: string
    sql: ${TABLE}.Direccion_de_la_Sucursal ;;
  }
  dimension: familia_del_producto {
    type: string
    sql: ${TABLE}.Familia_del_Producto ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha ;;
  }
  dimension: grupo_del_producto {
    type: string
    sql: ${TABLE}.Grupo_del_Producto ;;
  }
  dimension: identificador_de_empresa {
    type: string
    sql: ${TABLE}.Identificador_de_Empresa ;;
  }
  dimension: identificador_de_sucursal {
    type: number
    sql: ${TABLE}.Identificador_de_Sucursal ;;
  }
  dimension: importe_total_de_venta {
    type: number
    sql: ${TABLE}.Importe_Total_de_Venta ;;
  }
  dimension: laboratorio_fabricante {
    type: string
    sql: ${TABLE}.Laboratorio_Fabricante ;;
  }
  dimension: margen_de_ganancia_bruta {
    type: number
    sql: ${TABLE}.Margen_de_Ganancia_Bruta ;;
  }
  dimension: mes_fiscal {
    type: number
    sql: ${TABLE}.Mes_Fiscal ;;
  }
  dimension: nombre_de_la_empresa {
    type: string
    sql: ${TABLE}.Nombre_de_la_Empresa ;;
  }
  dimension: nombre_de_la_sucursal {
    type: string
    sql: ${TABLE}.Nombre_de_la_Sucursal ;;
  }
  dimension: nombre_del_producto {
    type: string
    sql: ${TABLE}.Nombre_del_Producto ;;
  }
  dimension: precio_unitario_de_venta {
    type: number
    sql: ${TABLE}.Precio_Unitario_de_Venta ;;
  }
  measure: count {
    type: count
  }
}
