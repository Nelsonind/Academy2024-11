with 
    fonte_categorias as (
        select
            ID
            ,CATEGORYNAME
            ,DESCRIPTION
        from
            {{ source('erp', 'category') }}
    )
    , renomeado as (
        select            
            cast(ID as int) as pk_categoria
            ,trim(lower(cast(CATEGORYNAME as string))) as nome_categoria
            ,trim(lower(cast(DESCRIPTION as string))) as descricao_categoria
        from
            fonte_categorias
    )
select 
    * 
from 
    renomeado