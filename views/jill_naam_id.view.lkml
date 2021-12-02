view: jill_naam_id {
  derived_table: {
    sql: SELECT
          people.ID  AS people_id,
          people.FirstName  AS people_first_name,
          people.LastName  AS people_last_name
      FROM `datasources.People`
           AS people
      WHERE people.FirstName = 'Jill'
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: people_id {
    type: number
    sql: ${TABLE}.people_id ;;
  }

  dimension: people_first_name {
    type: string
    sql: ${TABLE}.people_first_name ;;
  }

  dimension: people_last_name {
    type: string
    sql: ${TABLE}.people_last_name ;;
  }

  set: detail {
    fields: [people_id, people_first_name, people_last_name]
  }
}
