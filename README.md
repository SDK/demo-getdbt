Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices

## Instructiones para ambiente
- configurar profiles
`mkdir ~/.dbt && cp profiles/* ~/.dbt/`

## Workshop 1
- Conectar sources de datos a DBT
- modelar tablas/vistas en models
- dbt_project << contiene configuracion del proyecto
- profiles
- dbt run << correr las transformaciones
- dbt test << ejecutar los testing
- schema.yml << es donde se guarda la informacion de schema y metadata de las fuentes
- jinja https://jinja.palletsprojects.com/en/3.0.x/templates/#if

## Workshop 2
- Macros
- docs de dbt_utils = https://hub.getdbt.com/dbt-labs/dbt_utils/latest/
- video tutoriales = https://courses.getdbt.com/collections
- packages
    - se agregan al packages.yml
    - se corre `dbt deps`
- `dbt run` compila y corre en el motor los sql
- `dbt compile` solo compila el codigo
- la carpeta `target` solo aparece cuando se corre `dbt run` o `dbt compile`
- la documentacion se genera con `dbt docs generate` y se puede ver con `dbt docs serve`

## nomenclaturas:
 - stg_ staging
 - raw_ raw o source original
 - dmt_ datamarts
 ...
- git: 
    - git tutorial: https://learngitbranching.js.org/
    - `git status` te muestra el estado del repositorio
    - `git clone url` clona un repositorio
    - `git pull` se traen la ultiam version del repositorio (del branch que esten)
    - `git checkout -b <branch_name>` crea y cambia a un branch con ese `branch_name`
    - `git add <file_path>` agrega un archivo al repo
    - `git rm <file_path>` borra un archivo del repo
    - `git commit -m "mensaje"` commitea los cambios al repo
    - `git push` empuja los cambios al repositorio (de origen)



