with intermediate as (
    select
        *
    from
        {{ ref('int_vendas__prep_produtos') }}
        )
select * from intermediate