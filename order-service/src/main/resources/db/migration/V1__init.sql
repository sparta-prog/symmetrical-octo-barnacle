CREATE TABLE `t_orders` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `order_number` VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `t_order_line_items` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `order_id` BIGINT(20) NOT NULL,
    `sku_code` VARCHAR(255) NOT NULL,
    `price` DECIMAL(19, 2) NOT NULL,
    `quantity` INT(11) NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`order_id`) REFERENCES `t_orders`(`id`) ON DELETE CASCADE
);