SELECT i.ITEM_ID, i.iTEM_NAME, i.RARITY
FROM ITEM_INFO i
JOIN ITEM_TREE t ON i.ITEM_ID = t.ITEM_ID
WHERE PARENT_ITEM_ID IN (
                            SELECT ITEM_ID
                            FROM ITEM_INFO
                            WHERE RARITY = 'RARE'
                        )
ORDER BY i.ITEM_ID DESC