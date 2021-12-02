view: jillhaarid {
  derived_table: {
    sql: Select * From People
      Where FirstName = "Jill"
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  set: detail {
    fields: [id, first_name, last_name]
  }
}
